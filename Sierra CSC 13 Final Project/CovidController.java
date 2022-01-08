import java.net.URL;
import java.util.ResourceBundle;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.fxml.Initializable;

import javafx.scene.control.Label;
import javafx.scene.control.Button;
import javafx.scene.control.TextField;
import javafx.scene.control.DatePicker;
import javafx.scene.control.Hyperlink;

import javafx.scene.image.Image;
import javafx.scene.image.ImageView;
import javafx.scene.web.WebEngine;
import javafx.scene.web.WebView;

import java.time.LocalDate;
import java.io.IOException;
import java.net.URI;
import java.net.URISyntaxException;

public class CovidController implements Initializable {

  @FXML
  private Button btnGo;

  @FXML
  private Button btnCDC;

  @FXML
  private Button btnGeneral;

  @FXML
  private TextField txtState;

  @FXML
  private DatePicker datePickDate;

  @FXML
  private Label lblTotPos;

  @FXML
  private Label lblErrorMessage;

  @FXML
  private Label lblIncPos;

  @FXML
  private Label lblTotNeg;

  @FXML
  private Label lblIncNeg;
  
  @FXML
  private ImageView iconWx;

  @FXML
  private WebView webView;

  //String facetURL = "https://public.opendatasoft.com/explore/embed/dataset/testing-data-covid19-usa/custom/?disjunctive.state_name&sort=-date&dataChart=eyJxdWVyaWVzIjpbeyJjaGFydHMiOlt7InR5cGUiOiJzY2F0dGVyIiwiZnVuYyI6IlNVTSIsInlBeGlzIjoidG90X3Bvc2l0aXZlIiwic2NpZW50aWZpY0Rpc3BsYXkiOnRydWUsImNvbG9yIjoicmFuZ2UtY3VzdG9tIn1dLCJ4QXhpcyI6ImRhdGUiLCJtYXhwb2ludHMiOiIiLCJ0aW1lc2NhbGUiOiJkYXkiLCJzb3J0IjoiIiwic2VyaWVzQnJlYWtkb3duIjoic3RhdGVfbmFtZSIsImNvbmZpZyI6eyJkYXRhc2V0IjoidGVzdGluZy1kYXRhLWNvdmlkMTktdXNhIiwib3B0aW9ucyI6eyJkaXNqdW5jdGl2ZS5zdGF0ZV9uYW1lIjp0cnVlLCJzb3J0IjoiZGF0ZSJ9fX1dLCJkaXNwbGF5TGVnZW5kIjp0cnVlLCJhbGlnbk1vbnRoIjp0cnVlLCJ0aW1lc2NhbGUiOiIifQ%3D%3D&refine.date=2020-05-01&refine.state_name=California";
  String generalURL = "https://public.opendatasoft.com/explore/embed/dataset/testing-data-covid19-usa/custom/?disjunctive.state_name&sort=-date&dataChart=eyJxdWVyaWVzIjpbeyJjaGFydHMiOlt7InR5cGUiOiJzY2F0dGVyIiwiZnVuYyI6IlNVTSIsInlBeGlzIjoidG90X3Bvc2l0aXZlIiwic2NpZW50aWZpY0Rpc3BsYXkiOnRydWUsImNvbG9yIjoicmFuZ2UtY3VzdG9tIn1dLCJ4QXhpcyI6ImRhdGUiLCJtYXhwb2ludHMiOiIiLCJ0aW1lc2NhbGUiOiJkYXkiLCJzb3J0IjoiIiwic2VyaWVzQnJlYWtkb3duIjoic3RhdGVfbmFtZSIsImNvbmZpZyI6eyJkYXRhc2V0IjoidGVzdGluZy1kYXRhLWNvdmlkMTktdXNhIiwib3B0aW9ucyI6eyJkaXNqdW5jdGl2ZS5zdGF0ZV9uYW1lIjp0cnVlLCJzb3J0IjoiZGF0ZSJ9fX1dLCJkaXNwbGF5TGVnZW5kIjp0cnVlLCJhbGlnbk1vbnRoIjp0cnVlLCJ0aW1lc2NhbGUiOiIifQ%3D%3D";
  String cdcURL = "https://www.cdc.gov/coronavirus/2019-ncov/prevent-getting-sick/prevention.html";

  @FXML
  private void handleButtonAction(ActionEvent e) {
    // Create object to access the Model
    CovidModel covid = new CovidModel();

    webView = new WebView();

    //webView.getEngine().load("http://google.com");
    
    // Get state
    String state = txtState.getText();

    // Get date
    LocalDate date = datePickDate.getValue();

    //System.out.println(date);

    // Use the model to get the data
    if (covid.getWx(state, date))
    {
      /*
      System.out.println( "Tot Pos: " + covid.getTotPos() );
      System.out.println( "Inc Poc: " + covid.getIncPos() );
      System.out.println( "Tot Neg: " + covid.getTotNeg() );
      System.out.println( "Inc Neg: " + covid.getIncNeg() );
      */
      //engine.load(facetURL);
      iconWx.setImage(new Image("covid19.png"));
      lblTotPos.setText( covid.getTotPos() );
      lblIncPos.setText( covid.getIncPos() );
      lblTotNeg.setText( covid.getTotNeg() );
      lblIncNeg.setText( covid.getIncNeg() );
      lblErrorMessage.setText("");
    }
    else
    {
      iconWx.setImage(new Image("MissingInfo.png"));
      lblErrorMessage.setText("Please enter a valid U.S. state/territory or date (January 22, 2020 - yesterday) ");
      lblTotPos.setText("");
      lblIncPos.setText("");
      lblTotNeg.setText("");
      lblIncNeg.setText("");
    }
  }

  @FXML
  private void handleButtonActionCDC(ActionEvent e) {
    webView.getEngine().load(cdcURL);
  }

  @FXML
  private void handleButtonActionGENERAL(ActionEvent e) {
    webView.getEngine().load(generalURL);
  }

  @Override
  public void initialize(URL url, ResourceBundle rb) {
    //engine = webView.getEngine();
    webView.getEngine().load(generalURL);
  }

}
